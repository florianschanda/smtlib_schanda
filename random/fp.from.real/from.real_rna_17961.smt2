(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status unsat)
;; inside interval
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #x000524BF)))
;; x should be Float32(0x000524BF [Rational(337087, 713623846352979940529142984724747568191373312), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RNA (/ 962214212933600540611036071355685242267006509430335.0 2037035976334486086268445688409378161051468393665936250636140449354381299763336706183397376.0))))
;; w should be Float32(0x000524BF [Rational(337087, 713623846352979940529142984724747568191373312), 0.000000])

(assert (not (= x w)))
(check-sat)
(exit)
