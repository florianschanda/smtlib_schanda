(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xFFAEA8E1)))
;; x should be Float32(NaN)

(declare-const y Float32)
(assert (= y (fp #b1 #b00000000 #b00000000000000000000000)))
;; y should be Float32(-zero)

(declare-const z Float32)
(assert (= z ((_ to_fp 8 24) #x003BE9F7)))
;; z should be Float32(0x003BE9F7 [Rational(3926519, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const result Float32)
(assert (= result (fp.fma RTN x y z)))
(assert (not (= result ((_ to_fp 8 24) #xFFFFFFFF))))
(check-sat)
(exit)
