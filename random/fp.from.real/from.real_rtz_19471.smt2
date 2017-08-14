(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; above
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10000111100100001001001)))
;; x should be Float32(0xCAC3C849 [Rational(-12830793, 2), -6415396.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (/ 40874935.0 8.0))))
;; w should be Float32(0x4A9BECED [Rational(10218733, 2), 5109366.500000])

(assert (distinct x w))
(check-sat)
(exit)
