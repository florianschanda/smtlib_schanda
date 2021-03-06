(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; on high bound (exclusive)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b00000000101010010010001)))
;; x should be Float32(0x4A805491 [Rational(8410257, 2), 4205128.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (/ 16820515.0 4.0))))
;; w should be Float32(0x4A805492 [Rational(4205129), 4205129.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
