(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +halfpoint)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b01100010011000101000000)))
;; x should be Float32(0x4A313140 [Rational(2903120), 2903120.000000])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 2903120

(declare-const z (_ BitVec 32))
(assert (= z #b00000000001011000100110001010000))
;; z should be 2903120

(assert (not (= y z)))
(check-sat)
(exit)
