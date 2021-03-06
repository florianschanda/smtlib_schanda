(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x (_ +oo 8 24)))
;; x should be Float32(+oo)

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA 335818105547037530152960363165243629342.0)))
;; w should be Float32(0x7F7CA437 [Rational(335818107155126712544711697687459659776), 335818107155126712544711697687459659776.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
