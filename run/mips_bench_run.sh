#!/bin/bash
skip=44

tab='	'
nl='
'
IFS=" $tab$nl"

umask=`umask`
umask 77

gztmpdir=
trap 'res=$?
  test -n "$gztmpdir" && rm -fr "$gztmpdir"
  (exit $res); exit $res
' 0 1 2 3 5 10 13 15

if type mktemp >/dev/null 2>&1; then
  gztmpdir=`mktemp -dt`
else
  gztmpdir=/tmp/gztmp$$; mkdir $gztmpdir
fi || { (exit 127); exit 127; }

gztmp=$gztmpdir/$0
case $0 in
-* | */*'
') mkdir -p "$gztmp" && rm -r "$gztmp";;
*/*) gztmp=$gztmpdir/`basename "$0"`;;
esac || { (exit 127); exit 127; }

case `echo X | tail -n +1 2>/dev/null` in
X) tail_n=-n;;
*) tail_n=;;
esac
if tail $tail_n +$skip <"$0" | gzip -cd > "$gztmp"; then
  umask $umask
  chmod 700 "$gztmp"
  (sleep 5; rm -fr "$gztmpdir") 2>/dev/null &
  "$gztmp" ${1+"$@"}; res=$?
else
  echo >&2 "Cannot decompress $0"
  (exit 127); res=127
fi; exit $res
�XV[mips_bench_run.sh �U]o�6}�#�6[M�`@as�6*�rڇ�Pi��9K�J��@���kʲ��F�az�./Ͻ����'g.rg��%!���w�v�)eR�1�V����y���d1W�� ��kL�\y���`�>Mz���5�c�L���g^x`���j�N|�r�~hL\���菇���D�r5��F�S�.ûG��3�y3�����+�S�7#���`e	�샶�ι�;=��$�Q՗e��?t�<Z�|����u��$w��h�1�r��Ͳ?���	���+��Ԩ�ꦁf�X(�%�Ĳ��Qan~B����� ֫�� 2�?./��G���G�/��}��3/���D*�T����S@bI��s�Ae�F�j�7E��T�<�B�虭Q(��
Z�@���{�D�/~��J�%����Rp�R�B�j�sd�GK	�SJ�w0�Pr%X
�:�s��Ռ�b��NE(ע�m��X�����-�L�A���D"x�O� �hH�e��♼�p'ժ,X�A�:Vq���:0�L���
�Tb���9�w&r�"�k�T�Trx�6�܋�X���3���A<�F��R�'![��i��-�v���Z����0�oY���B&"%���pZB�>7���]3U�Ȧ�g��D���>�;u��kƳ0^g�c�Ү��Azð�����d�&�ڠ^�CD��l���L�N��kN�K&p�e�7b�9�s��{��}��z����h�J�uZ��=&L} ����D��+�nq�H��������W8�E���G����B�k������@�s��\�s�61�;kz�)Ɏks ~*��(���2��m��~Bg�^���d�����<{}  