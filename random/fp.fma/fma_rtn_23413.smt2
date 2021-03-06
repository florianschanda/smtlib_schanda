(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b00111011 #b00011000001111000001111)))
;; x should be Float32(0x1D8C1E0F [Rational(9182735, 2475880078570760549798248448), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x85D7B6A3)))
;; y should be Float32(0x85D7B6A3 [Rational(-14136995, 696898287454081973172991196020261297061888), -0.000000])

(declare-const z Float32)
(assert (= z (fp #b0 #b00000000 #b11111111111111111111111)))
;; z should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b0 #b00000000 #b11111111111111111111110))))
(check-sat)
(exit)
