(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x5FF321FA)))
;; x should be Float32(0x5FF321FA [Rational(35039117806709768192), 35039117806709768192.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b01000010 #b11011010111011101011001)))
;; y should be Float32(0x216D7759 [Rational(15562585, 19342813113834066795298816), 0.000000])

(declare-const result Float32)
(assert (= result (fp.div RTZ x y)))
(assert (= result ((_ to_fp 8 24) #x7E030DEC)))
(check-sat)
(exit)
