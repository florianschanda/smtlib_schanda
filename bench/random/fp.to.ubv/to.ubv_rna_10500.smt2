(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001001 #b10111011010010001110010)))
;; x should be Float32(0x44DDA472 [Rational(7262777, 4096), 1773.138916])

(declare-const y (_ BitVec 32))
(assert (= y ((_ fp.to_ubv 32) RNA x)))
;; y should be 1773

(declare-const z (_ BitVec 32))
(assert (= z #b00000000000000000000011011101101))
;; z should be 1773

(assert (not (= y z)))
(check-sat)
(exit)
