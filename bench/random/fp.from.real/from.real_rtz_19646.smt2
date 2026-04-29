(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b1 #b00000000 #b11011110000011100000000)))
;; x should be Float32(0x806F0700 [Rational(-28423, 2787593149816327892691964784081045188247552), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTZ (- (/ 14552578507.0 1427247692705959881058285969449495136382746624000.0)))))
;; w should be Float32(0x806F0701 [Rational(-7276289, 713623846352979940529142984724747568191373312), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
