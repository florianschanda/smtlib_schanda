(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b11111111 #b00000000000000000000000)))
;; x should be Float32(+oo)

(declare-const y Float32)
(assert (= y (fp #b1 #b11011100 #b00101100001010101110110)))
;; y should be Float32(0xEE161576 [Rational(-11612174038664661534880301056), -11612174038664661534880301056.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTP x y)))
(assert (= result ((_ to_fp 8 24) #xFF800000)))
(check-sat)
(exit)
