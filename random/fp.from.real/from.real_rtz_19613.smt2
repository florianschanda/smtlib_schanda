(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b01010011011001111101111)))
;; x should be Float32(0x8029B3EF [Rational(-2733039, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 609488203607976216050646530283816122597343689659169.0 159143435651131725489722319406982668832145968255151269580948472605811039044010680170577920.0)))))
;; w should be Float32(0x8029B3EF [Rational(-2733039, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
