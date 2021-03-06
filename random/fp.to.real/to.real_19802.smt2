(set-info :smt-lib-version 2.6)
(set-logic QF_FPLRA)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
(declare-const x Float32)
(assert (or (fp.isZero x) (fp.isSubnormal x) (fp.isNormal x)))
(declare-const y Real)
(assert (= y (fp.to_real x)))
(declare-const z Real)
(assert (= z (- (/ 16788953142598069969807977040240423670532583979683413.0 3182868713022634509794446388139653376642919365103025391618969452116220780880213603411558400.0))))
;; z should be a non-representable real

(assert (= y z))
(check-sat)
(exit)
