(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11101100100101001001011)))
;; x should be Float32(0x80764A4B [Rational(-7752267, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 3457626818680989684644859018512610915882016543115863.0 318286871302263450979444638813965337664291936510302539161896945211622078088021360341155840.0)))))
;; w should be Float32(0x80764A4B [Rational(-7752267, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
