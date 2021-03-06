(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010101 #b11111000010101110011001)))
;; x should be Float32(0x4AFC2B99 [Rational(16526233, 2), 8263116.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xA1AB242A)))
;; y should be Float32(0xA1AB242A [Rational(-5607957, 4835703278458516698824704), -0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x00000001)))
;; z should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNA x y z)))
(assert (not (= result ((_ to_fp 8 24) #xAD2894BF))))
(check-sat)
(exit)
