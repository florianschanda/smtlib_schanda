(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; below
(declare-const x Float32)
(assert (= x (fp #b0 #b01010101 #b00111010110111000100000)))
;; x should be Float32(0x2A9D6E20 [Rational(322417, 1152921504606846976), 0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 25398314337.0 368934881474191032320000.0)))))
;; w should be Float32(0xA99B04DD [Rational(-10159325, 147573952589676412928), -0.000000])

(assert (distinct x w))
(check-sat)
(exit)
