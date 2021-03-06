(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xB8F6DC86)))
;; x should be Float32(0xB8F6DC86 [Rational(-8089155, 68719476736), -0.000118])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x00000001)))
;; y should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.sub RTN x y)))
(assert (not (= result ((_ to_fp 8 24) #xB8F6DC87))))
(check-sat)
(exit)
