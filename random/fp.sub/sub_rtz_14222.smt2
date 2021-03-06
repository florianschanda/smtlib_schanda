(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x807E0A53)))
;; x should be Float32(0x807E0A53 [Rational(-8260179, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b01101001 #b11001101111011010000111)))
;; y should be Float32(0x34E6F687 [Rational(15136391, 35184372088832), 0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTZ x y)))
(assert (not (= result ((_ to_fp 8 24) #xB4E6F687))))
(check-sat)
(exit)
