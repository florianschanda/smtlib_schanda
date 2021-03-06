(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; on low bound (exclusive)
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x803CC339)))
;; x should be Float32(0x803CC339 [Rational(-3982137, 713623846352979940529142984724747568191373312), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNE (- (/ 7964275.0 1427247692705959881058285969449495136382746624.0)))))
;; w should be Float32(0x803CC33A [Rational(-1991069, 356811923176489970264571492362373784095686656), -0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
