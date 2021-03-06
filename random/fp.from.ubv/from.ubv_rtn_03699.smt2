(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (bvule x #b1111111101100010101000000100001100010110110010001101001100001001))
;; x should be 18402447237394780937

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RTN x)))
(assert (fp.leq r (fp #b0 #b10111110 #b11111110110001010100000)))
(check-sat)
(exit)
