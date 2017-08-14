(set-info :smt-lib-version 2.6)
(set-logic QF_FP)
(set-option :produce-models true)
(set-info :source |Random FP created by PyMPF|)
(set-info :license |https://www.gnu.org/licenses/gpl-3.0.html|)
(set-info :category random)
(set-info :status sat)
;; inside interval
(declare-const x Float32)
(assert (= x (fp #b1 #b00000001 #b00000000000000000000000)))
;; x should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(declare-const w Float32)
(assert (= w ((_ to_fp 8 24) RTP (- (/ 446014928108640327212382102379054125631596279.0 37942751801283770916395740367646853645359508575237100024449461127712974320414228480.0)))))
;; w should be Float32(0x80800000 [Rational(-1, 85070591730234615865843651857942052864), -0.000000])

(assert (= x w))
(check-sat)
(exit)
