(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b10010100 #b10110111111010001001110)))
;; x should be Float32(0x4A5BF44E [Rational(7207463, 2), 3603731.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 14760885153.0 4096.0))))
;; w should be Float32(0x4A5BF44F [Rational(14414927, 4), 3603731.750000])

(assert (distinct x w))
(check-sat)
(exit)
