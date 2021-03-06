(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x0026D04A)))
;; x should be Float32(0x0026D04A [Rational(1271845, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10001111 #b00110111111010001000000)))
;; y should be Float32(0xC79BF440 [Rational(-159697, 2), -79848.500000])

(declare-const result Float32)
(assert (= result (fp.sub RTP x y)))
(assert (= result (fp #b0 #b10001111 #b00110111111010001000001)))
(check-sat)
(exit)
