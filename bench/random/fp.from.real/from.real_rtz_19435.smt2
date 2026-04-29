(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10110100000100111110101)))
;; x should be Float32(0xCADA09F5 [Rational(-14289397, 2), -7144698.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 110480535.0 16.0)))))
;; w should be Float32(0xCAD2B992 [Rational(-6905033), -6905033.000000])

(assert (distinct x w))
(check-sat)
(exit)
