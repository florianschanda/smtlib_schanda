(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10011010001111100111111)))
;; x should be Float32(0xCACD1F3F [Rational(-13442879, 2), -6721439.500000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00000000000000000000001)))
;; y should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #xC501C89E)))
;; z should be Float32(0xC501C89E [Rational(-4252751, 2048), -2076.538574])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b1 #b10001010 #b00000011100100010011110))))
(check-sat)
(exit)
