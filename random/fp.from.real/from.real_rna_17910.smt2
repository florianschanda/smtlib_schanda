(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x3C5B0916)))
;; x should be Float32(0x3C5B0916 [Rational(7177355, 536870912), 0.013369])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 118817571181.0 10737418240000.0))))
;; w should be Float32(0x3C354D1D [Rational(11881757, 1073741824), 0.011066])

(assert (not (distinct x w)))
(check-sat)
(exit)
