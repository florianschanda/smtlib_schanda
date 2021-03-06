(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b11110000 #b00110001100011011111010)))
;; x should be Float32(0xF818C6FA [Rational(-12394763228741334318202740371619840), -12394763228741334318202740371619840.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00116A29)))
;; y should be Float32(0x00116A29 [Rational(1141289, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x70B79505)))
;; z should be Float32(0x70B79505 [Rational(454527282850089133375137775616), 454527282850089133375137775616.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTP x y z)))
(assert (not (= result ((_ to_fp 8 24) #x70B79505))))
(check-sat)
(exit)
