(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b10010000111101010100111)))
;; x should be Float32(0x80487AA7 [Rational(-4749991, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b01111011 #b10001010011001101100001)))
;; y should be Float32(0x3DC53361 [Rational(12923745, 134217728), 0.096289])

(declare-const result Float32)
(assert (= result (fp.min x y)))
(assert (not (= result (fp #b1 #b00000000 #b10010000111101010100111))))
(check-sat)
(exit)
