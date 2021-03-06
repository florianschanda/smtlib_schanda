(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x802951C1)))
;; x should be Float32(0x802951C1 [Rational(-2707905, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x646615DF)))
;; y should be Float32(0x646615DF [Rational(16977308461391199338496), 16977308461391199338496.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b10010101 #b01000110101000111000011)))
;; z should be Float32(0x4AA351C3 [Rational(10703299, 2), 5351649.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #x4AA351C3)))
(check-sat)
(exit)
