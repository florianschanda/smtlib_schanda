(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10010100111001010011111)))
;; x should be Float32(0x804A729F [Rational(-4879007, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xCA7CDC62)))
;; y should be Float32(0xCA7CDC62 [Rational(-8285745, 2), -4142872.500000])

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x80000001)))
;; z should be Float32(0x80000001 [Rational(-1, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result (fp #b0 #b00010110 #b00100110001000111010111))))
(check-sat)
(exit)
