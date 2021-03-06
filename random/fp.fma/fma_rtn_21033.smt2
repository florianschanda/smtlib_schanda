(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x (fp #b0 #b10010001 #b01001101001001001010000)))
;; x should be Float32(0x48A69250 [Rational(682277, 2), 341138.500000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #x007FFFFF)))
;; y should be Float32(0x007FFFFF [Rational(8388607, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (_ NaN 8 24)))
;; z should be Float32(NaN)

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result (fp #b1 #b11111111 #b11111111111111111111111))))
(check-sat)
(exit)
