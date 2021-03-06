(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 128)
(declare-const x (_ BitVec 128))
(assert (bvuge x #b11110100111011010010010110101011011001011010101111100010000010011101010111110000101000011100111111110111100000011111111111111101))
;; x should be 325562969355629131930869843055096233981

(declare-const r Float16)
(assert (= r ((_ to_fp_unsigned 5 11) RTZ x)))
(assert (fp.geq r ((_ to_fp 5 11) #x7BFF)))
(check-sat)
(exit)
