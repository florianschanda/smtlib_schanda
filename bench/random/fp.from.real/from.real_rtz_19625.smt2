(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x803B9735)))
;; x should be Float32(0x803B9735 [Rational(-3905333, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 3483674217441930096226105564349047683366447750858501.0 636573742604526901958889277627930675328583873020605078323793890423244156176042720682311680.0)))))
;; w should be Float32(0x803B9735 [Rational(-3905333, 713623846352979940529142984724747568191373312), -0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
