(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10110111001111100101111)))
;; x should be Float32(0xCADB9F2F [Rational(-14393135, 2), -7196567.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- 7196570.0))))
;; w should be Float32(0xCADB9F34 [Rational(-7196570), -7196570.000000])

(assert (distinct x w))
(check-sat)
(exit)
