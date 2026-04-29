(set-info :smt-lib-version 2.6)
(set-logic QF_FPBV)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; (fp.to.ubv RNA +normal)
(declare-const x Float32)
(assert (= x (fp #b0 #b10001001 #b10111011011010001110010)))
;; x should be Float32(0x44DDB472 [Rational(7264825, 4096), 1773.638916])

(declare-const y (_ BitVec 64))
(assert (= y ((_ fp.to_ubv 64) RNA x)))
;; y should be 1774

(declare-const z (_ BitVec 64))
(assert (= z #b0000000000000000000000000000000000000000000000000000011011101110))
;; z should be 1774

(assert (not (= y z)))
(check-sat)
(exit)
