(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00399D76)))
;; x should be Float32(0x00399D76 [Rational(1887931, 356811923176489970264571492362373784095686656), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00011111 #b10100011001010101100100)))
;; y should be Float32(0x8FD19564 [Rational(-3433817, 166153499473114484112975882535043072), -0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RNE x y)))
(assert (= result (fp #b1 #b00000000 #b00000000000000000000000)))
(check-sat)
(exit)
