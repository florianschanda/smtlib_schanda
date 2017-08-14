(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x ((_ to_fp 8 24) #xC69A4E40)))
;; x should be Float32(0xC69A4E40 [Rational(-158009, 8), -19751.125000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 50562888411.0 2560000.0)))))
;; w should be Float32(0xC69A4E41 [Rational(-10112577, 512), -19751.126953])

(assert (distinct x w))
(check-sat)
(exit)
