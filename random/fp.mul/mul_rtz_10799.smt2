(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b1 #b10010101 #b10011001011100111101011)))
;; x should be Float32(0xCACCB9EB [Rational(-13416939, 2), -6708469.500000])

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b10110100010101111110000)))
;; y should be Float32(0x805A2BF0 [Rational(-369343, 44601490397061246283071436545296723011960832), -0.000000])

(declare-const result Float32)
(assert (= result (fp.mul RTZ x y)))
(assert (not (= result ((_ to_fp 8 24) #x0B9038FF))))
(check-sat)
(exit)
