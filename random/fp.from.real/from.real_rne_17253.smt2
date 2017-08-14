(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10010011 #b00100011011000000110100)))
;; x should be Float32(0x4991B034 [Rational(2386957, 2), 1193478.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 7638262779.0 6400.0))))
;; w should be Float32(0x4991B034 [Rational(2386957, 2), 1193478.500000])

(assert (not (= x w)))
(check-sat)
(exit)
