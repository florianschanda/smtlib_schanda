(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8055F480)))
;; x should be Float32(0x8055F480 [Rational(-44009, 5575186299632655785383929568162090376495104), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xFF89C73A)))
;; y should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (= result (fp #b1 #b00000000 #b10101011111010010000000)))
(check-sat)
(exit)
