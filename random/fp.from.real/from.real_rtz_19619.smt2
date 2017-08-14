(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x80728FF5)))
;; x should be Float32(0x80728FF5 [Rational(-7507957, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 16743304768333140632549884308685195599028742675924227.0 1591434356511317254897223194069826688321459682551512695809484726058110390440106801705779200.0)))))
;; w should be Float32(0x80728FF5 [Rational(-7507957, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
