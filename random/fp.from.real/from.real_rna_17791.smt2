(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b0 #b10010010 #b00011010000010000111000)))
;; x should be Float32(0x490D0438 [Rational(1155207, 2), 577603.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 7393324429.0 12800.0))))
;; w should be Float32(0x490D0438 [Rational(1155207, 2), 577603.500000])

(assert (= x w))
(check-sat)
(exit)
