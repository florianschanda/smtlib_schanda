(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xCAD6CC51)))
;; x should be Float32(0xCAD6CC51 [Rational(-14077009, 2), -7038504.500000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- 7038506.0))))
;; w should be Float32(0xCAD6CC54 [Rational(-7038506), -7038506.000000])

(assert (distinct x w))
(check-sat)
(exit)
