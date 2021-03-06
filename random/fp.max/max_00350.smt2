(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCACB9FB7)))
;; x should be Float32(0xCACB9FB7 [Rational(-13344695, 2), -6672347.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x59558376)))
;; y should be Float32(0x59558376 [Rational(3756169554296832), 3756169554296832.000000])

(declare-const result Float32)
(assert (= result (fp.max x y)))
(assert (not (= result ((_ to_fp 8 24) #x59558376))))
(check-sat)
(exit)
