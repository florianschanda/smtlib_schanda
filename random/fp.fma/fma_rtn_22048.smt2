(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b11111111111111111111111)))
;; x should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x4A27B9F6)))
;; y should be Float32(0x4A27B9F6 [Rational(5496059, 2), 2748029.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x76A63FAE)))
;; z should be Float32(0x76A63FAE [Rational(1685962609418142428842797547126784), 1685962609418142428842797547126784.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (= result (fp #b0 #b11101101 #b01001100011111110101110)))
(check-sat)
(exit)
