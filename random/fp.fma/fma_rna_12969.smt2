(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x98A9EF30)))
;; x should be Float32(0x98A9EF30 [Rational(-696051, 158456325028528675187087900672), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x804635C7)))
;; y should be Float32(0x804635C7 [Rational(-4601287, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b10001111 #b11101001110110101000000)))
;; z should be Float32(0xC7F4ED40 [Rational(-250805, 2), -125402.500000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (= result ((_ to_fp 8 24) #xC7F4ED40)))
(check-sat)
(exit)
