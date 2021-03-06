(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x00761BE7)))
;; x should be Float32(0x00761BE7 [Rational(7740391, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const y Float32)
(assert (= y ((_ to_fp 8 24) #xC848CA20)))
;; y should be Float32(0xC848CA20 [Rational(-411217, 2), -205608.500000])

(declare-const z Float32)
(assert (= z (_ -zero 8 24)))
;; z should be Float32(-zero)

(declare-const result Float32)
(assert (= result (fp.fma RTZ x y z)))
(assert (not (= result ((_ to_fp 8 24) #x8939461A))))
(check-sat)
(exit)
