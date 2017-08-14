(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; above
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x140EDA32)))
;; x should be Float32(0x140EDA32 [Rational(4680985, 649037107316853453566312041152512), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTN (/ 93619715249.0 12980742146337069071326240823050240000.0))))
;; w should be Float32(0x140EDA33 [Rational(9361971, 1298074214633706907132624082305024), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
