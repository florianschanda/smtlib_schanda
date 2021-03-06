(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x09D6183E)))
;; x should be Float32(0x09D6183E [Rational(7015455, 1361129467683753853853498429727072845824), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA0B6566)))
;; y should be Float32(0xCA0B6566 [Rational(-4567731, 2), -2283865.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b11110110111111001011011)))
;; z should be Float32(0x4AFB7E5B [Rational(16481883, 2), 8240941.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result (fp #b0 #b10010101 #b11110110111111001011011)))
(check-sat)
(exit)
