(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00111100000111010100011)))
;; x should be Float32(0x4A9E0EA3 [Rational(10358435, 2), 5179217.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 258960857.0 50.0))))
;; w should be Float32(0x4A9E0EA3 [Rational(10358435, 2), 5179217.500000])

(assert (not (= x w)))
(check-sat)
(exit)
