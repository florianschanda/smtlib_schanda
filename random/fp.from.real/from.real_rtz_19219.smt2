(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x48F34FB0)))
;; x should be Float32(0x48F34FB0 [Rational(996603, 2), 498301.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 398641217.0 800.0))))
;; w should be Float32(0x48F34FB0 [Rational(996603, 2), 498301.500000])

(assert (not (= x w)))
(check-sat)
(exit)
