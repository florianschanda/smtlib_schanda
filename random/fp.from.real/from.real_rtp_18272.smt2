(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b10110100110011000101001)))
;; x should be Float32(0x4ADA6629 [Rational(14313001, 2), 7156500.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- 1907516.0))))
;; w should be Float32(0xC9E8D9E0 [Rational(-1907516), -1907516.000000])

(assert (distinct x w))
(check-sat)
(exit)
