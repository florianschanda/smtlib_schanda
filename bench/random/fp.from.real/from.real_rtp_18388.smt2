(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x11B3FDA7)))
;; x should be Float32(0x11B3FDA7 [Rational(11795879, 41538374868278621028243970633760768), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (/ 38170821873.0 207691874341393105141219853168803840000.0))))
;; w should be Float32(0x1168F9E9 [Rational(15268329, 83076749736557242056487941267521536), 0.000000])

(assert (not (distinct x w)))
(check-sat)
(exit)
