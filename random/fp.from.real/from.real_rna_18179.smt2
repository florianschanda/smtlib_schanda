(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x8039E6C7)))
;; x should be Float32(0x8039E6C7 [Rational(-3794631, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (- (/ 135396954505046579381408501986428946481768722342071627.0 25462949704181076078355571105117227013143354920824203132951755616929766247041708827292467200.0)))))
;; w should be Float32(0x8039E6C7 [Rational(-3794631, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
