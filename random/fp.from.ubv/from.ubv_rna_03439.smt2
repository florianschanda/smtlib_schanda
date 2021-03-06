(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; fp.from.ubv(BitVec 64)
(declare-const x (_ BitVec 64))
(assert (= x #b1011111000000111101001001011001101101110010001000100011100001001))
;; x should be 13693094282599352073

(declare-const r Float32)
(assert (= r ((_ to_fp_unsigned 8 24) RNA x)))
(assert (not (fp.eq r (fp #b0 #b10111110 #b01111100000011110100101))))
(check-sat)
(exit)
