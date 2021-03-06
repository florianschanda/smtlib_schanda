(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x063DAD28)))
;; x should be Float32(0x063DAD28 [Rational(1553829, 43556142965880123323311949751266331066368), 0.000000])

(declare-const y Float32)
(assert (= y (fp #b0 #b00000000 #b00000000000000000000001)))
;; y should be Float32(0x00000001 [Rational(1, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const z Float32)
(assert (= z (fp #b1 #b11101000 #b01011101110000011010010)))
;; z should be Float32(0xF42EE0D2 [Rational(-55421115176416380435190746447872), -55421115176416380435190746447872.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #xF42EE0D1))))
(check-sat)
(exit)
