(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00011110 #b01111011100010000011001)))
;; x should be Float32(0x8F3DC419 [Rational(-12436505, 1329227995784915872903807060280344576), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b1 #b10010100 #b01001010010001001110110)))
;; y should be Float32(0xCA252276 [Rational(-5411131, 2), -2705565.500000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b00000000000000000000001)))
;; z should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RNE x y z)))
(assert (not (= result ((_ to_fp 8 24) #x19F4D1DF))))
(check-sat)
(exit)
