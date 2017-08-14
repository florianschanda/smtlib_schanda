(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10000100011001110000011)))
;; x should be Float32(0x4AC23383 [Rational(12727171, 2), 6363585.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 1272717083.0 200.0))))
;; w should be Float32(0x4AC23383 [Rational(12727171, 2), 6363585.500000])

(assert (not (= x w)))
(check-sat)
(exit)
