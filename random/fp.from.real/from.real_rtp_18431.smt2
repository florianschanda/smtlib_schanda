(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x (fp #b0 #b00000000 #b00100011010101000011111)))
;; x should be Float32(0x0011AA1F [Rational(1157663, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 2315327389.0 1427247692705959881058285969449495136382746624000.0))))
;; w should be Float32(0x0011AA20 [Rational(36177, 22300745198530623141535718272648361505980416), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
